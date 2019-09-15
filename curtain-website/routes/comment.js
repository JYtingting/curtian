var mysql = require('mysql');
var express = require('express');
var router = express.Router();
var formidable = require('formidable'),
    util = require('util');
router.post('/', function(req, res, next) {
    const form = new formidable.IncomingForm();
    //form.encoding = 'utf-8';
    form.parse(req, function(err, fields, files) {
        console.log(util.inspect({fields: fields, files: files}));
        var comment=fields['comment'];
        //创建数据库连接
        var dbConnection = mysql.createConnection({
            host: '127.0.0.1',
            user: 'root',
            password: 'tt31245960',
            database: 'sunmengting'
        });
        dbConnection.query('INSERT INTO comments SET ?', {
            comment:comment,
        }, function (err, result) {
            //插入成功后调用执行这个函数体
            if (err) {
                res.send("注册失败");
                dbConnection.end();
            }
            res.send(result.insertId+''); //转换成字符串发出
            dbConnection.end(); //关闭数据库连接
        });
    });

});

module.exports = router;