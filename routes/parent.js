var express = require('express');
var connect = require('../utils/dbConnect');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('parent', {
                title  : 'Roku - parent',
                message: 'This is Parent page',
                data: result,
                indexPage : false,
                parent: true,
                movies: false
            });
        }
    });
});

module.exports = router;
