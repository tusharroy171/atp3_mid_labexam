//DECLARATION
var express  	= require('express');
var ejs  		= require('ejs');
var bodyParse  	= require('body-parser');
var exSession  	= require('express-session');
var cookieParser= require('cookie-parser');
var home  		= require('./controllers/home');
var user  		= require('./controllers/user');
var register 		= require('./controllers/register');
var login  		= require('./controllers/login');
var logout  	= require('./controllers/logout');
var mainhome 	= require('./controllers/mainhome');
var product 	= require('./controllers/product');
var app 		= express();

//CONGIFURATION
app.set('view engine', 'ejs');

//MIDDLEWARE
app.use(bodyParse.urlencoded({extended:false}));
app.use(exSession({secret:"my top secret value", saveUninitialized:true, resave:false}));
app.use(cookieParser());
app.use('/home', home);
app.use('/user', user);
app.use('/login', login);
app.use('/logout', logout);
app.use('/register', register);
app.use('/mainhome', mainhome);
app.use('/product', product);



//ROUTING
app.get('/', function(req, res){
	res.send('<h2>Welcome to Computer shop</h2><a href="/login">Login</a>');

});


//SERVER STARTUP
app.listen(3000, function(){
	console.log('server started at 3000...');
});
