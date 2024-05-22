var express = require('express');
var router = express.Router();
const {register} = require('../controllers/register');
const {login} = require('../controllers/login');
const {getInfo} = require('../controllers/getInfo');
const {insert_customerInfo} = require('../controllers/insert_customerInfo');


/* GET home page. */
router.post('/register', register);
router.post('/login', login);
router.post('/getInfo', getInfo);
router.post('/insert_customerInfo', insert_customerInfo);


module.exports = router;
