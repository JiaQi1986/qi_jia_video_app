var express = require('express');
var connect = require('../utils/dbConnect');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies WHERE mov_genre=4', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('kids', {
                title  : 'Roku - Kids',
                message: 'This is kids page!',
                data: result,
                movies: true,
                style: false,
                parent: false
            });
        }
    });
});

module.exports = router;
