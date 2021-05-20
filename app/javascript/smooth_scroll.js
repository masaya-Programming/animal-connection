const smoothScrollTrigger = document.querySelectorAll('a[href^="#"]');
console.log(smoothScrollTrigger)
for (let i = 0; i < smoothScrollTrigger.length; i++) {
    smoothScrollTrigger[i].addEventListener('click', (e) => {        
      e.preventDefault();
      let href = smoothScrollTrigger[i].getAttribute('href'); // 各a要素のリンク先を取得
      let targetElement = document.getElementById(href.replace('#', '')); // リンク先の要素（コンテンツ）を取得
      
      const rect = targetElement.getBoundingClientRect().top; // ブラウザからの高さを取得
      const offset = window.pageYOffset; // 現在のスクロール量を取得
      const gap = 60; // 固定ヘッダー分の高さ
      const target = rect + offset - gap; //最終的な位置を割り出す

      window.scrollTo({
          top: target,
          behavior: 'smooth',
      });
    });
}