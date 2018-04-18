function display(){
    if (document.getElementById("lsit").value=="Top"){
        document.getElementById("TopNews").style.display="block";
        document.getElementById("MLBNews").style.display="none";
        document.getElementById("NBANews").style.display="none";
        document.getElementById("NFLNews").style.display="none";
    }
        
    else if (document.getElementById("lsit").value=="MLB"){
        document.getElementById("MLBNews").style.display="block";
        document.getElementById("TopNews").style.display="none";
        document.getElementById("NBANews").style.display="none";
        document.getElementById("NFLNews").style.display="none";
    }

    else if (document.getElementById("lsit").value=="NBA"){
        document.getElementById("TopNews").style.display="none";
        document.getElementById("MLBNews").style.display="none";
        document.getElementById("NFLNews").style.display="none";
        document.getElementById("NBANews").style.display="block";
    }

    else if (document.getElementById("lsit").value=="NFL"){
        document.getElementById("TopNews").style.display="none";
        document.getElementById("NBANews").style.display="none";
        document.getElementById("MLBNews").style.display="none"; 
        document.getElementById("NFLNews").style.display="block";
    }

    else if (document.getElementById("lsit").value=="showall"){
        document.getElementById("TopNews").style.display="block";
        document.getElementById("NBANews").style.display="block";
        document.getElementById("MLBNews").style.display="block";
        document.getElementById("NFLNews").style.display="block";
    }
}

function loadJson(url, property, selector) {
        $.ajax({
            url: url,
            success: (result) => {
                try {
                    let results = JSON.parse(result);
                    let html = '';
                    html += results[property];
                    console.log(property)
                    $(selector).html(html);
                } catch (e) {
                    $(selector).innerText = '[ERROR] Error loading content';
                    alert('[ERROR] Error loading content');
                }
            },

        });
    }

    function loadRss(url, selector) {
        $.ajax({
            url: url,
            success: (result) => {
                displayRss(result, selector);
            },
            error: (err) => {
                $(selector).innerText = '[ERROR] Error loading content';
                alert('[ERROR] Error loading content')
            }
        });

    }

    function displayRss(obj, selector) {
        console.log("obj = " + obj);
        let items = obj.querySelectorAll("item");
        let hedmE = selector;
        let html = "";
        for (let i = 0; i < items.length; i++) {
            let newsItem = items[i];
            let hederMe = hedmE;
            let title = newsItem.querySelector("title").firstChild.nodeValue;
            let description = newsItem.querySelector("description").firstChild.nodeValue;
            let link = newsItem.querySelector("link").firstChild.nodeValue;
            let pubDate = newsItem.querySelector("pubDate").firstChild.nodeValue;
            
            let part = '<div">';
            part += '<h4>' + hederMe + '<h4>'
            part += '<h4>' + title + '</strong><h4>';
            part += '<p ><i>' + pubDate + '</i> - <a href="' + link + '" target="_blank">See original</a></p>';
            part += '</div>';
            part += '<p style="color: orange" >----------------------------------------------------------------------</p>';

            html += part;
        }
        $(selector).html(html);

        $(selector).fadeIn(1000);
    }

    $(document).ready(() => {
        $('#TopNews').fadeOut(250);
        loadRss('http://www.espn.com/espn/rss/news', '#TopNews');
        
        $('#MLBNews').fadeOut(250);
        loadRss('http://www.espn.com/espn/rss/mlb/news', '#MLBNews');
        
        $('#NBANews').fadeOut(250);
        loadRss('http://www.espn.com/espn/rss/NBA/news', '#NBANews');
                
        $('#NFLNews').fadeOut(250);
        loadRss('http://www.espn.com/espn/rss/nfl/news', '#NFLNews');

        // prevent submission reload
        $('.form').submit(function (e) {
            e.preventDefault();
        });

    });