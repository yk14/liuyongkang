var t;

t=outlookbar.addtitle('登录管理')
outlookbar.additem('添加管理',t,'/wlgw/admin/admin/adminAdd.jsp')
outlookbar.additem('密码修改',t,'/wlgw/admin/userinfo/userPw.jsp')

t=outlookbar.addtitle('用户管理')
outlookbar.additem('用户管理',t,'/wlgw/userMana.action')

t=outlookbar.addtitle('商品类别')
outlookbar.additem('类别管理',t,'/wlgw/catelogMana.action')
outlookbar.additem('添加类别',t,'/wlgw/admin/catelog/catelogAdd.jsp')

t=outlookbar.addtitle('商品管理')
outlookbar.additem('商品管理',t,'/wlgw/goodsManaNoTejia.action')
outlookbar.additem('添加商品',t,'/wlgw/admin/goods/goodsNoTejiaAdd.jsp')


t=outlookbar.addtitle('订单管理')
outlookbar.additem('订单管理',t,'/wlgw/orderMana.action')

t=outlookbar.addtitle('留言管理')
outlookbar.additem('留言管理',t,'/wlgw/liuyanMana.action')


t=outlookbar.addtitle('退出系统') 
outlookbar.additem('安全退出',t,'/wlgw/login.jsp')