var express = require('express');
var userModel = require('./../models/product');
var router = express.Router();

router.get('/', function(req, res){

		userModel.getAll(function(results){
			
				res.render('product/index', {user: results});
			
			});
		});




router.get('/storage', function(req, res){

   
	userModel.storage(function(results){
			
				res.render('product/storage', {user: results});
			
			});
});

router.get('/parmanent', function(req, res){

   
	userModel.parmanent(function(results){
			
				res.render('product/parmanent', {user: results});
			
			});
});
router.get('/portable', function(req, res){

   
	userModel.portable(function(results){
			
				res.render('product/portable', {user: results});
			
			});
});

router.get('/casing', function(req, res){

   
	userModel.casing(function(results){
			
				res.render('product/casing', {user: results});
			
			});
});
router.get('/monitor', function(req, res){

   
	userModel.monitor(function(results){
			
				res.render('product/monitor', {user: results});
			
			});
});

router.get('/laptop', function(req, res){

   
	userModel.laptop(function(results){
			
				res.render('product/laptop', {user: results});
			
			});
});




module.exports = router;
