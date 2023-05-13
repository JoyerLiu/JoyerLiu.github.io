<link rel="stylesheet" class="aplayer-secondary-style-marker" href="\assets\css\APlayer.min.css"><script src="\assets\js\APlayer.min.js" class="aplayer-secondary-script-marker"></script><script class="meting-secondary-script-marker" src="\assets\js\Meting.min.js"></script>window.addEventListener('DOMContentLoaded', function() {
    var maxWidth = 1920; // 最大显示宽度
    var divElement = document.getElementById('main_page'); // 替换为您的 <div> 元素的 ID

    function setDivMaxWidth() {
        var windowWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        var margin = (windowWidth - maxWidth) / 2;
        var newMargin = Math.max(0, margin);
        divElement.style.paddingLeft = newMargin + 'px';
        divElement.style.paddingRight = newMargin + 'px';
    }

    // 初始加载时设置宽度
    setDivMaxWidth();

    // 窗口大小改变时重新设置宽度
    window.addEventListener('resize', function() {
        setDivMaxWidth();
    });
});</div>