const express = require('express');
const app = express();
const session = require('express-session');

app.use(session({
    secret: 'secret code',
    resave:false,
    saveUninitialized: false,
    cookie:{
        secure: false,
        maxAge: 1000 *60*60
    }
}));

app.use(express.json({  //detail 호출을 위한 설정
    limit: '50mb'
}))

const server = app.listen(3000, () =>{
    console.log('Server started. port 3000.');
});

const db = {
    database : "db이름",
    connectionLinit: 10,
    host: "ip주소",
    user:"root",
    password:"패스워드"
};

const dbPool = require('mysql').createPool(db);
app.post('/api/login', async (request, res) =>{
    request.session['email'] = 'seungwon.go@gmail.com';
    res.send('ok');
});

app.post('/api/logout', async (request, res) =>{
    request.session.destroy();
    res.send('ok');
});

const sql = require('./sql.js');

app.post('/api/:alias', async (request, res) =>{
    if(!request.session.email){
        return res.status(401).send({error:'You need to login.'});
    }
    try{
        res.send(await req.db(request.params.alias, request.body.param));   // request.body.param -> folio_id 를 파라미터로 받음 
    }
    catch(e){
        res.status(500).send({
            error: e
        })
    }
});

const req = {
    async db(alias, param = [], where = ''){
        return new Promise((resolve, reject) => dbPool.query(sql[alias].query + where, param, (error, rows) =>{
            if(error){
                if(error.code != 'ER_DUP_ENTRY')
                    console.log(error);
                resolve({
                    error
                });
            }else resolve(rows);
        }));
    }
};