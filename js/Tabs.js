jQuery(function () {
    var $div_li = jQuery("div.tab_menu ul li");
    $div_li.click(function ck() {
        jQuery(this).addClass("selected")            //当前<li>元素高亮
				   .siblings().removeClass("selected");  //去掉其它同辈<li>元素的高亮
        var index = $div_li.index(this);  // 获取当前点击的<li>元素 在 全部li元素中的索引。
        jQuery("div.tab_box > div")   	//选取子节点。不选取子节点的话，会引起错误。如果里面还有div 
					.eq(index).show()   //显示 <li>元素对应的<div>元素
					.siblings().hide(); //隐藏其它几个同辈的<div>元素
    }).hover(function () {
        jQuery(this).addClass("hover");
    }, function () {
        jQuery(this).removeClass("hover");
    })
})