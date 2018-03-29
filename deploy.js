/**
 * @file 远程部署
 * @author zhouqing02
 */

var sftp = require('node-sftp-deploy-i');
var chalk = require('chalk');
var env = process.argv[2];

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

console.log(chalk.yellow(' ------- deploy start... ------- \n'));

sftp(config[env], function() {
    console.log(chalk.cyan('  deploy complete.\n'));
}, function(err) {
    console.log(err)
});
