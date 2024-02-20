import AuthMiddleware from "../Utils/AuthMiddleware";

const MyProtectedRoute = () => {
    useEffect(() => {
        // Sử dụng AuthMiddleware trước khi gọi API hoặc render component
        const accessToken = AuthMiddleware();

        if (accessToken) {
            // Tiếp tục với logic của route
            callApi(accessToken);
        }
    }, []);

    const callApi = async (accessToken) => {
        try {
            const response = await fetch('/your_api_endpoint', {
                headers: {
                    'Authorization': `Bearer ${accessToken}`,
                    'Content-Type': 'application/json',
                },
                // ... (các options khác nếu cần)
            });

            if (response.ok) {
                const data = await response.json();
                // Xử lý dữ liệu nhận được từ API
            } else {
                // Xử lý lỗi từ API
            }
        } catch (error) {
            console.error('Error calling API:', error);
        }
    };

    return (
        // JSX của component hoặc route
        <></>
    );
};

export default MyProtectedRoute;
