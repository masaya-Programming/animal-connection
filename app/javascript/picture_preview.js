document.addEventListener('DOMContentLoaded', function(){
  const preview = document.getElementById('picture-preview');
  if (!preview){return false;}

  // 選択した画像を表示する関数
  const createPictureHTML = (blob) => {
    // 画像を表示するためのdiv要素を生成
    const pictureElement = document.createElement('div');
    // 表示する画像を生成
    const blobPicture = document.createElement('img');
    blobPicture.setAttribute('src', blob);
    blobPicture.setAttribute('class', 'picture-preview');
    // 生成したHTMLの要素をブラウザに表示させる
    pictureElement.appendChild(blobPicture);
    preview.appendChild(pictureElement);
  };

  document.getElementById('picture-image').addEventListener('change', function(e){
    // 画像が表示されている場合のみ、すでに存在している画像を削除する
    const pictureContent = document.querySelector('div.preview-list img');
    if (pictureContent){
      pictureContent.remove();
    }

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    createPictureHTML(blob);
  });
});
