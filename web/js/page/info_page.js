<link rel="stylesheet" class="aplayer-secondary-style-marker" href="\assets\css\APlayer.min.css"><script src="\assets\js\APlayer.min.js" class="aplayer-secondary-script-marker"></script><script class="meting-secondary-script-marker" src="\assets\js\Meting.min.js"></script>

// 等待网页加载完毕后执行
document.addEventListener("DOMContentLoaded", function() {
    // 获取标题
    var pageTitle = document.title;
    //获取导航栏
    var crumb=document.querySelector("[aria-current='page']")
    //设置导航栏的标题为当前标题
    crumb.textContent=pageTitle;

    //设置价格
    calculatePrice();
});

var buttons = document.querySelector("[id='product_category']").querySelectorAll('.btn-group .btn');

function handleClick(event) {
    var clickedButton = event.target;

    // 移除其他按钮的选中状态
    buttons.forEach(function(button) {
        if (button !== clickedButton) {
            button.classList.remove('active');
        }
    });

    // 添加或移除点击按钮的选中状态
    clickedButton.classList.toggle('active');
    toggleButtonStyle(clickedButton);
}

buttons.forEach(function(button) {
    button.addEventListener('click', handleClick);
});

function toggleButtonStyle(button) {
    if (button.classList.contains('action')) {
        button.classList.remove('btn-outline-primary');
        button.classList.add('btn-primary');
    } else {
        button.classList.remove('btn-primary');
        button.classList.add('btn-outline-primary');
    }
}

function calculatePrice() {
    var quantityInput = document.getElementById("quantity");
    var quantity = parseInt(quantityInput.value);

    // 最少数量为1
    if (quantity < 1 ||quantityInput.value=="") {
        quantity = 1;
        quantityInput.value=1;
    }

    var price = quantity * 300; // 假设每个单位的价格为10

    var priceElement = document.getElementById("price");
    priceElement.textContent = "￥" + price;
}
