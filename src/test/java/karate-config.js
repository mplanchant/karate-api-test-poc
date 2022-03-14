function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.configure('logPrettyResponse', true);
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'local';
  }
  var config = {
    env: env,
    foodApiUrl: 'http://some-environment:8080/food-api'
  }
  if (env === 'local') {
    config.foodApiUrl = 'http://localhost:8080/food-api'
  } else if (env === 'lab') {
    config.foodApiUrl = 'http://lab-environment:8080/food-api'
  }
  return config;
}