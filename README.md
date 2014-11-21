web-performance-tuning用環境
===================================

注意：仮想環境のメモリは1024以上で設定

## Provision 
Puppet  

## IP
192.168.56.130

## Set Up
### git clone
```
$ git clone git remote add origin git@github.com:hironomiu/Vagrant-web-performance-tuning.git
or
$ git clone https://github.com/hironomiu/Vagrant-web-performance-tuning.git
```
### vagrant up
```
$ vagrant up  
```
## Login
### demouser
```
$ ssh demouser@192.168.56.130
```
### vagrant
```
$ vagrant ssh
```
### root
```
$ vagrant ssh
$ sudo su -
```

## users

| OS user | pass | 続DB | 接続Port |  DB user |  DB pass | 用途 |
|:-----------:|:------------:|:------------:|:------------:|:------------:|:------------:|:------------:|
| root | - | - | 3306 |  root | vagrant | root |
| vagrant | vagrant | - | - | - | - | vagrant用ユーザ |
| demouser | demouser | groupwork | 3306 | demouser | demopass | 検証用ユーザ |

## Packages   
### mysql
自動起動
/etc/my.cnf  
### iptables
自動起動
port22,80 allow
### httpd
自動起動
/etc/httpd/conf/httpd.conf

