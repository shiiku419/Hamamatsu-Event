let postValues = {}
function getMetaContent(name) {
    const element = document.querySelector(`meta[name="${name}"]`);
    return element ? element.getAttribute('content') : null;
}

function moveTonextQ(optionNum) {
    const progress_bar = document.getElementById("progressbar");
    const form_area = document.getElementById("form-area");

    if (optionNum === 1) {
        form_elements = document.querySelectorAll("#f1 input");
        form_elements.forEach(e => {
            label_name = e.getAttribute("name");
            postValues[label_name] = e.value;
        });

        progress_bar.innerHTML = `
        <li class="complete">イベント情報</li>
        <li class="active">日程情報</li>
        <li>住所情報</li>
        <li>料金情報</li>
        <li>主催者情報</li>
        <li>その他</li>`;

        let content_block = document.getElementById("f1");
        content_block.style.display = "none";
        let next_btn = document.getElementById("next-btn1");
        let categorySelect = document.querySelector("select[name='category']");
        postValues["category"] = categorySelect.value;
        next_btn.style.display = "none"

        form_area.innerHTML += `
        <div id="f2" class="f2">
            <h3 class="form-item">日程情報</h3>
            <div class="detail-form">
                <label for="start_date">開始日</label><br><input type="date" name="start_date"><br>
                <label for="end_date">終了日</label><br><input type="date" name="end_date"><br>
                <label for="start_time">開始時間</label><br><input type="time" name="start_time"><br>
                <label for="end_time">終了時間</label><br><input type="time" name="end_time">
            </div>
        </div>
        <button id="next-btn2" class="next-btn btn-main font-weight-bold mt-3" onclick="moveTonextQ(2)">次へ</button>`;

    } else if (optionNum === 2) {
        form_elements = document.querySelectorAll("#f2 input");
        form_elements.forEach(e => {
            label_name = e.getAttribute("name");
            postValues[label_name] = e.value;
        });

        progress_bar.innerHTML = `
        <li class="complete">イベント情報</li>
        <li class="complete">日程情報</li>
        <li class="active">住所情報</li>
        <li>料金情報</li>
        <li>主催者情報</li>
        <li>その他</li>`;

        form_area.classList.add("h-adr");
        let content_block = document.getElementById("f2");
        content_block.style.display = "none";
        let next_btn = document.getElementById("next-btn2");
        next_btn.style.display = "none"

        form_area.innerHTML += `
        <div id="f3" class="f3">
            <h3 class="form-item">住所情報</h3>
            <div class="detail-form">
                <label for="postal_code">郵便番号</label><br><input type="text" id="postal_code" name="postal_code" onKeyUp="makeAddress()"><br>
                <label for="city">市区町村</label><br><input type="text" id="city" name="municipality_name"><br>
                <label for="ward">町域</label><br><input type="text" id="ward" name="district"><br>
                <label for="place_name">場所名称</label><br><input type="text" name="remarks"><br>
                <label for="address">住所</label><br><input type="text" id="address" name="address"><br>
                <label for="latitude">緯度</label><br><input type="text" name="latitude"><br>
                <label for="longitude">経度</label><br><input type="text" name="longitude"><br>
                <label for="access_info">アクセス方法</label><br><input type="text" name="access_method"><br>
                <label for="parking_info">駐車場情報</label><br><input type="text" name="parking_info">
            </div>
        </div>
        <button id="next-btn3" class="next-btn btn-main font-weight-bold mt-3" onclick="moveTonextQ(3)">次へ</button>`;

    } else if (optionNum === 3) {
        form_elements = document.querySelectorAll("#f3 input");
        form_elements.forEach(e => {
            label_name = e.getAttribute("name");
            postValues[label_name] = e.value;
        });

        progress_bar.innerHTML = `
        <li class="complete">イベント情報</li>
        <li class="complete">日程情報</li>
        <li class="complete">住所情報</li>
        <li class="active">料金情報</li>
        <li>主催者情報</li>
        <li>その他</li>`;

        let content_block = document.getElementById("f3");
        content_block.style.display = "none";
        let next_btn = document.getElementById("next-btn3");
        next_btn.style.display = "none"

        form_area.innerHTML += `
        <div id="f4" class="f4">
            <h3 class="form-item">料金情報</h3>
            <div class="detail-form">
                <label for="price_basic">料金(基本)</label><br><input type="text" name="basic_fee"><br>
                <label for="price_detail">料金(詳細)</label><br><input type="text" name="detailed_fee"><br>
            </div>
        </div>
        <button id="next-btn4" class="next-btn btn-main font-weight-bold mt-3" onclick="moveTonextQ(4)">次へ</button>`;

    } else if (optionNum === 4) {
        form_elements = document.querySelectorAll("#f4 input");
        form_elements.forEach(e => {
            label_name = e.getAttribute("name");
            postValues[label_name] = e.value;
        });

        progress_bar.innerHTML = `
        <li class="complete">イベント情報</li>
        <li class="complete">日程情報</li>
        <li class="complete">住所情報</li>
        <li class="complete">料金情報</li>
        <li class="active">主催者情報</li>
        <li>その他</li>`;

        let content_block = document.getElementById("f4");
        content_block.style.display = "none";
        let next_btn = document.getElementById("next-btn4");
        next_btn.style.display = "none"

        form_area.innerHTML += `
        <div id="f5" class="f5">
            <h3 class="form-item">主催者情報</h3>
            <div class="detail-form">
                <label for="organizer">主催者</label><br><input type="text" name="organizer"><br>
                <label for="contact_name">連絡先名称</label><br><input type="text" name="contact_name"><br>
                <label for="contact_tel">連絡先電話番号</label><br><input type="tel" name="contact_phone_number"><br>
            </div>
        </div>
        <button id="next-btn5" class="next-btn btn-main font-weight-bold mt-3" onclick="moveTonextQ(5)">次へ</button>`;

    } else if (optionNum === 5) {
        form_elements = document.querySelectorAll("#f5 input");
        form_elements.forEach(e => {
            label_name = e.getAttribute("name");
            postValues[label_name] = e.value;
        });

        progress_bar.innerHTML = `
        <li class="complete">イベント情報</li>
        <li class="complete">日程情報</li>
        <li class="complete">住所情報</li>
        <li class="complete">料金情報</li>
        <li class="complete">主催者情報</li>
        <li class="active">その他</li>`;

        let postData = {
            post: postValues
        };
        console.log(postData)

        let content_block = document.getElementById("f5");
        content_block.style.display = "none";
        let next_btn = document.getElementById("next-btn5");
        next_btn.style.display = "none"

        form_area.innerHTML += `
        <div id="f6" class="f6">
            <h3 class="form-item">その他</h3>
            <div class="detail-form">
                <label for="public_date">公開日</label><br><input type="time" name="public_date"><br>
                <label for="update_date">更新日</label><br><input type="time" name="update_date"><br>
                <label for="remarks">備考</label><br><textarea type="text" name="remarks"></textarea><br>
            </div>
        </div>
        <button class="submit-btn btn-main font-weight-bold mt-3">投稿</button>`;

        document.querySelector('.submit-btn').addEventListener('click', function (event) {
            event.preventDefault();  // デフォルトのフォーム送信を防ぐ
            fetch('/dashboards.json', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-Token': getMetaContent('csrf-token')  // Uncomment this if you're using Rails' built-in CSRF protection
                },
                body: JSON.stringify(postData)
            })
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    // 追加の処理をここに書く（例：成功メッセージを表示する、フォームフィールドをクリアするなど）
                })
                .catch((error) => {
                    console.error('Error:', error);
                });
        });
    }
    console.log(postValues);
}

function makeAddress() {
    yubin_bango = document.getElementById("postal_code");
    pref = document.getElementById("pref");
    town = document.getElementById("city");
    ward = document.getElementById("ward");
    fullAddress = document.getElementById("address");

    let api = 'https://zipcloud.ibsnet.co.jp/api/search?zipcode=';
    let url = api + yubin_bango.value;

    fetchJsonp(url, {
        timeout: 10000, //タイムアウト時間
    })
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            if (data.status === 400) { //エラー時
            } else if (data.results === null) {
            } else {
                pref.value = data.results[0].address1;
                town.value = data.results[0].address2;
                ward.value = data.results[0].address3;
                fullAddress.value = pref.value + town.value + ward.value;
            }
        })
        .catch((ex) => { //例外処理
            console.log(ex);
        });
}
