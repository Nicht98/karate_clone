function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    base_url_dev: 'https://api-ztrain-dev.herokuapp.com',
    base_url:'https://ztrain-shop.herokuapp.com',
    product: '624463744db47f10408d5d67',
    Category: '626025e208d7b5fd9c7207e1'
  }
/*  var result = karate.callSingle('classpath:Ztrain_API/User/login.feature@TEST_OF-704', config);
  config.authInfo = { token: result.resp.token, user: result.resp.user._id };

  var result = karate.callSingle('classpath:Ztrain_API/Product/Category.feature@TEST_OF-72', config);
    config.CatInfo = { category: result.resp._id };*/
  return config;
}

