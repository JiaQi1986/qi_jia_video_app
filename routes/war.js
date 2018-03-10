var express = require('express');
var connect = require('../utils/dbConnect');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies WHERE mov_genre=3', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('war', {
                title  : 'Roku Video App - War Movies',
                message: 'War Movies',
                data: result,
                movies: true,
                style: false,
                parent: false
            });
        }
    });
});

module.exports = router;
