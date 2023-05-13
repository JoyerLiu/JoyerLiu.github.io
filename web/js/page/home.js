<link rel="stylesheet" class="aplayer-secondary-style-marker" href="\assets\css\APlayer.min.css"><script src="\assets\js\APlayer.min.js" class="aplayer-secondary-script-marker"></script><script class="meting-secondary-script-marker" src="\assets\js\Meting.min.js"></script>

// 获取视图高度
var viewHeight = window.innerHeight;
var isScrolling = false; // 标记是否正在滚动中
var lastScrollTop = 0; // 上次滚动的位置

// 监听滚轮事件
window.addEventListener('wheel', function(event) {
    if (!isScrolling) {
        // 判断滚动方向
        var isDown = event.deltaY > 0;
        if (isDown && isScrollingDown() && lastScrollTop==0) {
            // 向下滑动
            scrollToNextView();
        }
    }
});

// 判断是否正在向下滑动
function isScrollingDown() {
    var currentScrollTop = window.pageYOffset || document.documentElement.scrollTop;
    var isDown = currentScrollTop > lastScrollTop || currentScrollTop === 0;
    lastScrollTop = currentScrollTop;
    return isDown;
}

// 滚动到下一个视图
function scrollToNextView() {
    isScrolling = true;

    // 计算下一个视图的滚动位置
    var nextScrollTop = lastScrollTop + viewHeight;

    // 滚动页面
    scrollToSmoothly(nextScrollTop, 1000, easeInOutCubic, function() {
        isScrolling = false;

    });
}

function touch_scrollToNextView() {
    isScrolling = true;

    // 计算下一个视图的滚动位置
    var nextScrollTop = 0 + viewHeight;

    // 滚动页面
    scrollToSmoothly(nextScrollTop, 1000, easeInOutCubic, function() {
        isScrolling = false;
        lastScrollTop = nextScrollTop;
    });
}

// 缓动函数
function easeInOutCubic(t) {
    return t < 0.5 ? 4 * t * t * t : (t - 1) * (2 * t - 2) * (2 * t - 2) + 1;
}

// 平滑滚动函数
function scrollToSmoothly(to, duration, easingFunction, callback) {
    // 获取滚动起始位置
    var start = window.pageYOffset || document.documentElement.scrollTop;
    var timeStart = Date.now();

    // 动画函数
    function loop() {
        // 计算已经经过的时间
        var timeElapsed = Date.now() - timeStart;
        // 计算进度比例
        var progress = Math.min(timeElapsed / duration, 1);
        // 计算新的滚动位置
        var scrollTop = start + (to - start) * easingFunction(progress);

        // 滚动页面
        window.scrollTo({
            top: scrollTop,
            behavior: 'auto'
        });

        // 判断是否继续动画
        if (timeElapsed < duration) {
            // 继续动画
            requestAnimationFrame(loop);
        } else {
            // 结束动画
            window.scrollTo({
                top: to,
                behavior: 'auto'
            });
            callback(); // 执行回调函数
        }
    }

    // 启动动画
    requestAnimationFrame(loop);
}

