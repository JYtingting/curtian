var mysql = require('mysql');
var express = require('express');
var router = express.Router();
var formidable = require('formidable'),
    util = require('util');
router.post('/', function(req, res, next) {
    const form = new formidable.IncomingForm();
    //form.encoding = 'utf-8';
    form.uploadDir = "public/upload"; //上传文件存储的路径
    form.keepExtensions = true; //保留上传文件的文件后缀
    //form.maxFileSize = 200 * 1024 * 1024;
    form.parse(req, function(err, fields, files) {
        console.log(util.inspect({fields: fields, files: files}));
        var user_name=fields['username'];
        var price=fields['price'];
        var picture_path=files['picture'].path; //服务器端的存储文件的路径地址
        //需要移除public/前缀后，再存入数据库
        picture_path=picture_path.replace(/public/,'');
        //创建数据库连接
        var dbConnection = mysql.createConnection({
            host: '127.0.0.1',
            user: 'root',
            password: 'tt31245960',
            database: 'sunmengting'
        });
        dbConnection.query('INSERT INTO shopping_cart SET ?', {
            user_name: user_name,
            price: price,
            picture_url: picture_path
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