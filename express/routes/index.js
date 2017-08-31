var express = require('express');
var router = express.Router();
var session = require('express-session');
var request = require('request');

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('index', {title: 'Express'});
});

//chenjiang
router.get('/teacherList', function(req, res, next) {
  request.get('http://127.0.0.1/ttyk/phpci/teacher/teacher_list',function (error, response, body) {
    if (!error && response.statusCode == 200) {
      res.json(body);
    }
  });
});
//chenjiang
router.get('/teacherMsg', function(req, res, next) {
	 var id=req.query.id;
 	 request.get('http://127.0.0.1/ttyk/phpci/teacher/teacherMsg/?id='+id,function (error, response, body) {
	    if (!error && response.statusCode == 200) {
	      // console.log(body);
	      res.json(body);
	    }
  	});
});


//获取该老师获得的荣誉
router.get('/teacherHonor', function(req, res, next) {
   var id=req.query.id;
   request.get('http://127.0.0.1/ttyk/phpci/teacher/teacherHonor/?id='+id,function (error, response, body) {
      if (!error && response.statusCode == 200) {
        // console.log(body);
        res.json(body);
      }
    });
});

//获取该老师所发布的课程
router.get('/teacherClass', function(req, res, next) {
   var id=req.query.id;
   request.get('http://127.0.0.1/ttyk/phpci/teacher/teacherClass/?id='+id,function (error, response, body) {
      if (!error && response.statusCode == 200) {
        // console.log(body);
        res.json(body);
      }
    });
});
//老师删除他发布的一个课程
router.get('/delClass', function(req, res, next) {
   var c_id=req.query.c_id;
   request.get('http://127.0.0.1/ttyk/phpci/teacher/delClass/?c_id='+c_id,function (error, response, body) {
      if (!error && response.statusCode == 200) {
        res.json(body);
      }
    });
});

//获取一个课程的详细信息
router.get('/classMsg', function(req, res, next) {
   var c_id=req.query.c_id;
   request.get('http://127.0.0.1/ttyk/phpci/teacher/classMsg/?id='+c_id,function (error, response, body) {
      if (!error && response.statusCode == 200) {
        console.log(body);
        res.json(body);
      }
    });
});
//检测是否选取过该课程
router.get('/yes_no_join', function(req, res, next){
    var c_id=req.query.c_id;
    var s_id=req.query.s_id;
    request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/yes_no_join',form:{c_id:c_id,s_id:s_id}},function (error, response, body) {
        if (!error && response.statusCode == 200) {
              res.json(body);
        }
    });

})

//选取该老师的课程和取消选课
router.get('/joinClass', function(req, res, next) {
    var c_id=req.query.c_id;
    var s_id=req.query.s_id;
    var t_id=req.query.t_id;
    var t_name=req.query.t_name;
    var c_subject=req.query.c_subject;
    var start_time=req.query.start_time;
    var c_address=req.query.c_address;
    var t_tel=req.query.t_tel;
    request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/joinClass',
        form:{
          c_id:c_id,
          s_id:s_id,
          t_id:t_id,
          t_name:t_name,
          c_subject:c_subject,
          start_time:start_time ,
          c_address:c_address,
          t_tel:t_tel   
        }
      },function (error, response, body) {
        if (!error && response.statusCode == 200) {
              res.json(body);
        }
    });
});
//老师发布课程
router.get('/addClass', function(req, res, next) {
    var id=req.query.id;
    var name=req.query.name;
    var grade=req.query.grade;
    var subject=req.query.subject;
    var describe=req.query.describe;
    var price=req.query.price;
    var method=req.query.method;
    var time=req.query.time;
    var c_try=req.query.c_try;
    var address=req.query.address;
    var tel=req.query.tel;
  console.log(id+name+grade+subject+describe+price+method+time+c_try+address+tel);
  request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/addClass',
        form:{
              id:id,
              name:name,
              grade:grade,
              subject:subject,
              describe:describe,
              price:price,
              method:method,
              time:time,
              c_try:c_try,
              address:address,
              tel:tel 
        }
      },function (error, response, body) {
        if (!error && response.statusCode == 200) {
              res.json(body);
        }
    });
});




//获取关于该老师的所有评论
router.get('/teacherComment', function(req, res, next) {
   var id=req.query.id;
   request.get('http://127.0.0.1/ttyk/phpci/teacher/teacherComment/?id='+id,function (error, response, body) {
      if (!error && response.statusCode == 200) {
        // console.log(body);
        res.json(body);
      }
    });
});
//关于该老师的评论点赞功能
router.get('/addGood', function(req, res, next) {
   var c_id=req.query.id;
   // console.log(c_id);
   request.get('http://127.0.0.1/ttyk/phpci/teacher/addGood/?c_id='+c_id,function (error, response, body) {
      if (!error && response.statusCode == 200) {
        // console.log(body);
        res.json(body);
      }
    });
});
//学生发表评论
router.get('/addComment', function(req, res, next){
    var s_id=req.query.s_id;
    var t_id=req.query.t_id;
    var c_content=req.query.c_content;
    console.log(c_content);
    request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/add_comment',form:{s_id:s_id,t_id:t_id,c_content:c_content}},function (error, response, body) {
        if (!error && response.statusCode == 200) {
              res.json(body);
        }
    });

})


//获取该学生关注的所有老师
router.get('/get_Focus', function(req, res, next) {
   var s_id=req.query.s_id;
   request.get('http://127.0.0.1/ttyk/phpci/teacher/get_Focus/?s_id='+s_id,function (error, response, body) {
      if (!error && response.statusCode == 200) {
        // console.log(body);
        res.json(body);
      }
    });
});


//检测是否已经关注
router.get('/teacherFocus', function(req, res, next){
    var s_id=req.query.s_id;
    var t_id=req.query.t_id;
    // console.log(s_id+t_id)
    request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/teacher_focus',form:{s_id:s_id,t_id:t_id}},function (error, response, body) {
        if (!error && response.statusCode == 200) {
              res.json(body);
        }
    });

})


//关注老师和取消关注老师
router.get('/teacher_toggle_Focus', function(req, res, next){
    var s_id=req.query.s_id;
    var t_id=req.query.t_id;
    // console.log(s_id+t_id)
    request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/teacher_toggle_focus',form:{s_id:s_id,t_id:t_id}},function (error, response, body) {
        if (!error && response.statusCode == 200) {
              // console.log(body);
              res.json(body);
        }
    });

})

//根据性别 活动范围筛选老师
router.get('/teacher_sex_area', function(req, res, next){
    var sex=req.query.sex;
    var area=req.query.area;
    request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/teacher_sex_area',form:{sex_id:sex,area_id:area}},function (error, response, body) {
        if (!error && response.statusCode == 200) {
              res.json(body);
        }
    });

})
//具体过滤筛选功能数据传输
router.get('/teacher_filter', function(req, res, next){
    var grade=req.query.grade;
    var sex=req.query.sex;
    var education=req.query.education;
    var dowell=req.query.dowell;
    console.log(grade+sex+education+dowell);
    request.post({url:'http://127.0.0.1/ttyk/phpci/teacher/teacher_filter',form:{grade_id:grade,sex_id:sex,education_id:education,dowell_id:dowell}},function (error, response, body) {
        if (!error && response.statusCode == 200) {
          // console.log(body);
          res.json(body);
        }
    });
});
//li get teacher_list
router.get('/index_teacher_list', function (req, res, next) {
    var catalog=req.query.catalog;
    // console.log(catalog);
    // console.log(111111);
    request.post({url:'http://127.0.0.1/ttyk/phpci/index/teacher_list',form:{catalog:catalog}}, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            // console.log(body);
            res.json(body);
        }
    });
});
//li order the teacher_list by years in asc
router.get('/index_asc_year',function (req,res,next) {
    var dowell=req.query.dowell;
    request.post({url:'http://127.0.0.1/ttyk/phpci/index/list_asc_order_years',form:{dowell:dowell}},function (error,response,body) {
        if (!error&&response.statusCode==200){
            // console.log(body);
            res.json(body);
        }
    })
})
//li order the teacher_list by years in desc
router.get('/index_desc_year',function (req,res,next) {
    var dowell=req.query.dowell;
    request.post({url:'http://127.0.0.1/ttyk/phpci/index/list_desc_order_years',form:{dowell:dowell}},function (error,response,body) {
        if (!error&&response.statusCode==200){
            // console.log(body);
            res.json(body);
        }
    })
})
//li order the teacher_list by price in asc
router.get('/index_asc_price',function (req,res,next) {
    var dowell=req.query.dowell;
    // console.log('index.js');
    request.post({url:'http://127.0.0.1/ttyk/phpci/index/list_asc_order_price',form:{dowell:dowell}},function (error,response,body) {
        if (!error&&response.statusCode==200){
            // console.log(body);
            res.json(body);
        }
    })
})
//li order the teacher_list by price in desc
router.get('/index_desc_price',function (req,res,next) {
    var dowell=req.query.dowell;
    request.post({url:'http://127.0.0.1/ttyk/phpci/index/list_desc_order_price',form:{dowell:dowell}},function (error,response,body) {
        if (!error&&response.statusCode==200){
            // console.log(body);
            res.json(body);
        }
    })
})
//li system info
router.get('/index_system_message',function(req,res,next){
  console.log('123');
   request.get('http://127.0.0.1/ttyk/phpci/index/system_message',function (error,response,body) {
    // console.log(res.json(body));
        if (!error&&response.statusCode==200){
            // console.log(body);
            res.json(body);
        }else{
          console.log(2222222222)
        }
    })
  
})
//li get the list of chat
router.get('/index_recommend',function(req,res,next){
  var student_id=req.query.student_id;
  request.get('http://127.0.0.1/ttyk/phpci/index/recommend/?student_id='+student_id,function(error,response,body){
    if(!error&&response.statusCode==200){
      res.json(body);
    }
  })
})
// li focus or not  when open
router.get('/index_focus',function(req,res,next){
  var s_id=req.query.s_id;
  console.log(s_id);
    request.get('http://127.0.0.1/ttyk/phpci/index/index_focus/?s_id='+s_id,function(error,response,body){
    if(!error&&response.statusCode==200){
      res.json(body);
    }
  // request.get('http://127.0.0.1/ttyk/phpci/index/index_focus/?s_id='+s_id),function(error,response,body){
  //   if (!error&&response.statusCode==200) {
  //     res.json(body);
  //   }
  })
})
//li focus or not when click
router.get('/index_change_focus',function(req,res,next){
  var s_id=req.query.s_id;
  var t_id=req.query.t_id;
  request.post({url:'http://127.0.0.1/ttyk/phpci/index/change_focus',form:{s_id:s_id,t_id:t_id}},function(error,response,body){
        if(!error&&response.statusCode==200){
      res.json(body);
    }
  })
})

module.exports = router;

// var request = require('request');
//Zhang
router.get('/courseList_teacher',function(req,res,next){
    request.get('http://127.0.0.1/ttyk/phpci/course/courseList_teacher',function(error,response,body){
        if (!error&&response.statusCode==200){
            console.log('success');
            res.json(body);
        }else{
            console.log('failed')
        }

    })

})

// 解决跨域问题
router.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By", ' 3.2.1');
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});


router.get('/', function (req, res, next) {
    res.send('haha');
});

module.exports = router;