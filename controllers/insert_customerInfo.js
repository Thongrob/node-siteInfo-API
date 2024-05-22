// const secret = 'secrete-key-api-2023';
var jwt = require('jsonwebtoken');
const conn = require('../configuration/db_conention')

exports.insert_customerInfo = (req, res, next) => {
    
    let user = req.body.user
    let password = req.body.password
    let fname = req.body.fname
    let lname = req.body.lname
    let phone = req.body.phone
    
    

    const token = req.headers.authorization.split(' ')[1];
    // console.log(token)
    try {
        var decoded = jwt.verify(token, process.env.SECRET, (err, result) => {
            if(err) {
                
                res.json({
                    status: "Error",
                    err
                })
            } else {
               
                conn.execute('INSERT INTO users (user, password, fname, lname, phone) VALUES(?, ?, ?, ?, ?)', 
                [user, password, fname, lname, phone],
                    (err, info, fields) => {
                        if(err) {
                            res.json({
                            status : "Error",
                            message: err
                            })
                            return
                        }
                    
                        res.json({
                            status: "success",
                            message: "Your info",
                            data: info
                          })                        
                    }
                )
            }
        });
    }  catch (err) {
        res.json({
            status: "Error",
            message: err
        })
    }   
}