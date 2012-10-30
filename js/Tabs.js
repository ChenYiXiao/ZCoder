function setTab(m, n) {
    var tli = document.getElementById("menu" + m).getElementsByTagName("li");
    var mli = document.getElementById("main" + m).getElementsByTagName("ul");
    for (i = 0; i < tli.length; i++) {
        tli[i].className = i == n ? "hover" : "";
        mli[i].style.display = i == n ? "block" : "none";
    }
}
/*第三种形式 利用一个背景层定位*/
var m3 = { 0: "", 1: "评论内容", 2: "技术内容", 3: "点评内容" }
function nowtab(m, n) {
    m3[1] = document.getElementById("news").innerHTML;
    if (n != 0 && m3[0] == "") m3[0] = document.getElementById("projects").innerHTML;
    document.getElementById("tip" + m).style.left = n * 100 + 'px';
    document.getElementById("main2").innerHTML = m3[n];
}  