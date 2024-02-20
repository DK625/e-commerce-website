import Cookies from 'js-cookie';

const decodeAccessToken = (token) => {
    try {
        const base64Url = token.split('.')[1];
        const base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
        const jsonPayload = decodeURIComponent(atob(base64).split('').map((c) => {
            return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
        }).join(''));

        return JSON.parse(jsonPayload);
    } catch (error) {
        console.error('Error decoding access token:', error);
        return null;
    }
};

const refreshAccessToken = async () => {
    const refreshToken = localStorage.getItem('refresh_token');
    // const refreshToken = getRefreshTokenFromCookie();

    try {
        const response = await fetch('/refresh_token', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Refresh-Token': refreshToken,
            },
        });

        if (response.ok) {
            const result = await response.json();
            const newAccessToken = result.access_token;
            setAccessTokenCookie(newAccessToken);
            return newAccessToken;
        } else {
            console.error('Failed to refresh access token');
            return null;
        }
    } catch (error) {
        console.error('Error refreshing access token:', error);
        return null;
    }
};

const AuthMiddleware = async (req, res, next) => {
    const accessToken = Cookies.get('access_token');
    // const accessToken = getAccessTokenFromCookie();

    if (!accessToken) {
        // Chưa có Access Token, chuyển hướng đến trang đăng nhập hoặc xử lý khác
        return res.redirect('/login');
    }

    const decodedToken = decodeAccessToken(accessToken);

    if (decodedToken && decodedToken.exp && decodedToken.exp * 1000 < Date.now()) {
        // Access Token đã hết hạn, cần refresh
        const newAccessToken = await refreshAccessToken();

        if (newAccessToken) {
            // Refresh thành công, tiếp tục gọi API với Access Token mới
            req.headers['Authorization'] = `Bearer ${newAccessToken}`;
            next();
        } else {
            // Refresh thất bại, chuyển hướng đến trang đăng nhập hoặc xử lý khác
            return res.redirect('/login');
        }
    } else {
        // Access Token còn hiệu lực, tiếp tục gọi API với Access Token hiện tại
        req.headers['Authorization'] = `Bearer ${accessToken}`;
        next();
    }
};

export default AuthMiddleware;
