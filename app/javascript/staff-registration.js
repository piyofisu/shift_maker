document.getElementById('add-button').addEventListener('click', function(e) {
  e.preventDefault();
  const elementIndex = document.querySelectorAll('.staff-form').length;

  // 新たなスタッフフィールドを作成
  var newForm = document.createElement('div');
  newForm.setAttribute('class', 'staff-form');

  newForm.innerHTML = `
    <div>名前</div>
    <textarea name="staffs[${elementIndex}][name]" placeholder="スタッフ名"></textarea>
    <div>性別</div>
    <select name="staffs[${elementIndex}][sex_id]">
      <option value="1">男性</option>
      <option value="2">女性</option>
    </select>
  `;

  // 追加ボタンを作成し、クリックイベントに自身の削除を設定する
  var removeButton = document.createElement('button');
  removeButton.textContent = '削除';
  removeButton.addEventListener('click', function () {
    newForm.remove();
  });
  newForm.appendChild(removeButton);

  // 新たなstaffフィールドを既存のformの最後に追加
  document.getElementById('staff-form').appendChild(newForm);
});