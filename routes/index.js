var express = require('express');
var router  = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('home', {
        title  : 'Roku',
        message : 'Welcome to Roku Video App',
        indexPage : true,
        parent: false,
        movies: false
    });
});

module.exports = router;
