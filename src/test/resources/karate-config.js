function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    base_url: 'https://api-ztrain-dev.herokuapp.com',
    base_url_old:'https://ztrain-shop.herokuapp.com',
    base_url_new: 'https://api-ztrain.vercel.app/',
    product: '624463744db47f10408d5d67',
    Category: '625d70ef3f538325fe268e56',
    promo_code_id: '62a7481d432e692df153f36e'
  }

/*  var result = karate.callSingle('classpath:Ztrain_API/User/login.feature@TEST_OF-704', config);
  config.authInfo = { token: result.resp.token, user: result.resp.user._id , };

  var result = karate.callSingle('classpath:Ztrain_API/Product/Category.feature@TEST_OF-72', config);
  config.CatInfo = { category: result.resp._id };*/

/*  var result = karate.callSingle('classpath:Ztrain_API/Promotion/createPromotion.feature@tagCreatePromotion', config);
  config.promoInfo = { promo_code: result.resp._id};*/

  return config;
}

