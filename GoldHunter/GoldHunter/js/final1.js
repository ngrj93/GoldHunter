// On page load
$(window).load(columnHeight);

// On window resize
$(window).resize( function () {
    // Clear all forced column heights before recalculating them after window resize
    $("#cssmenu1").css("height", "");  
    $("#content").css("height", "");
    $("#more").css("height", "");
    columnHeight();
});

// Make columns 100% in height
function columnHeight() {
    // Column heights should equal the document height minus the header height and footer height
    var newHeight = $(document).height() - $(".banner").height() - $(".footer").height() - $(".navigation").height() + "px";
    $("#cssmenu1").css("height", newHeight);
    $("#content").css("height", newHeight);
    $("#more").css("height", newHeight);
}