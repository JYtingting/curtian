var mysql = require('mysql');
var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    //创建数据库连接
    var dbConnection = mysql.createConnection({
        host: '127.0.0.1',
        user: 'root',
        password: 'tt31245960',
        database: 'sunmengting'
    });

    dbConnection.query('SELECT * FROM comments ORDER BY user_id DESC', [], function(err, rows, fields) {
        if (err) throw err;
        //如果查询无结果
        if (rows.length==0)
            res.send("<h1>not found</h1>");
        else {
            //将用户表里的信息转换成JSON字符串返回给前端
            var string_res = JSON.stringify(rows);
            res.send(string_res);
        }
        dbConnection.end();
    });
});

module.exports = router;