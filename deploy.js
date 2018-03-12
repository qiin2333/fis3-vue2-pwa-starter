/**
 * @file 远程部署
 * @author zhouqing02
 */

var sftp = require('node-sftp-deploy-i');
var chalk = require('chalk');

var config = {
    test: {
        host: 'xxx',
        port: 'xxx',
        username: 'xxx',
        password: 'xxx',
        sourcePath: './fis-dist',
        remotePath: '/data/app/xxx'
    },
    production: {
        host: 'xxx',
        port: 'xxx',
        username: 'xxx',
        password: 'xxx',
        sourcePath: './fis-dist',
        remotePath: '/data/app/xxx'
    }
}

sftp(config[process.env.NODE_ENV], function() {
    chalk.cyan('deploy succeed.');
}, function(err) {
    console.log(err)
});
