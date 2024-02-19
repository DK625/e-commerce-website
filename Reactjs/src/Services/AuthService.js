import Cookies from 'js-cookie';
const apiUrl = process.env.REACT_APP_API_URL;

const AuthService = {
    login: async (username, password) => {
        try {
            const response = await fetch(`${apiUrl}/api/login`, {
                method: 'POST',
                body: JSON.stringify({
                    username: username,
                    password: password,
                }),
                headers: {
                    'Content-Type': 'application/json',
                },
            });

            if (response.ok) {
                // Set the access token as an HTTP-only cookie using js-cookie
                const result = await response.json();
                // const resultString = JSON.stringify(result);
                Cookies.set('access_token', result.access_token, {
                    path: '/',
                    secure: true, // Set to true if using HTTPS
                    sameSite: 'strict', // Adjust based on your needs
                });
                // Lưu các trường khác trong local storage
                localStorage.setItem('refresh_token', result.refresh_token);
                localStorage.setItem('username', result.username);
                localStorage.setItem('user_id', result.user_id);
                localStorage.setItem('role', result.role);

                return { success: true, error: null }; // Successful login
            } else {
                const errorResponse = await response.json();
                return { success: false, error: errorResponse.error }; // Failed login with error message
            }
        } catch (error) {
            console.error('Error during login:', error);
            return { success: false, error: 'An unexpected error occurred.' }; // Unexpected error
        }
    },

};

export default AuthService;
