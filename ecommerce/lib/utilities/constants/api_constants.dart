class ApiConstants {
  ApiConstants._();

  // Base Url
  static const devBaseUrl = 'http://103.197.184.184:8080';
  static const stgBaseUrl = 'https://api.github.com';
  static const prodBaseUrl = 'https://api.github.com';

  // User
  static const userLogin = '/login/login';
  static const userLogout = '/login/logout';
  static const userMe = '/login/me';
  static const userRegister = '/login/register';

  // Todo
  static const task = '/task';
  static const addTask = '/task';
  static const updateTask = '/task/{id}';
  static const deleteTask = '/task/{id}';

  static const repository = '/repositories/{id}';

 

  // Home
  static const homeGetListProduct = '/api/Home/get-list-product';
  static const homeGetProductDetail =
      '/api/Home/get-product-detail-by/{productId}';

  //order
  static const postOrder = '/api/Order/add-order';

  // auth
  static const auth='/api/Auth/login';
  static const nonAuthenticatedPaths = [];
}
