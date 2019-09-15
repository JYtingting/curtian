var mysql = require('mysql');
var express=require('express');
var router = express.Router();

router.post('/', function(req, res, next)
{
    //创建数据库连接
    var dbConnection = mysql.createConnection({
        host: '127.0.0.1',
        user: 'root',
        password: 'tt31245960',
        database: 'sunmengting'
    });

    dbConnection.query('SELECT * FROM user_info ORDER BY user_id DESC', {
        username: req.body.username,
        password: req.body.password
    }, function(err, rows, fields) {
        if (err) throw err;
        //如果查询无结果
        if (rows.length==0)
            res.send("<h1>not found</h1>");
        else {
            if (row.length == 0)
            {
                res.send("用户名不存在")
            }
            else if (row[0].password == req.body.password)
            {
                res.redirect('/homepage.html')
            }
            else
            {
                res.send('密码错误');
            }
        }
        dbConnection.end();
    });
});

module.exports = router;






