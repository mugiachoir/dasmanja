// NAVIGASI
const sidebar = document.querySelector("nav ul");
const toggle = document.querySelector(".menu-toggle");
const all = document.querySelector("main");
const first = toggle.querySelector("span:nth-child(1)");
const second = toggle.querySelector("span:nth-child(2)");
const third = toggle.querySelector("span:nth-child(3)");
const brand = document.querySelectorAll("nav .logo a");
const menuService = document.querySelector("nav  ul li:nth-child(3) a");
const menuLearn = document.querySelector("nav  ul li:nth-child(2) a");
toggle.addEventListener("click", () => {
    first.classList.toggle("topburger");
    third.classList.toggle("bottomburger");
    second.classList.toggle("midburger");
    sidebar.classList.toggle("slide");
});
// AKHIR NAVIGASI
// GLIDE
if (document.querySelector(".glide") != undefined) {
    new Glide(".glide", {
        type: "carousel",
        perView: 1,
        focusAt: "center",
        autoplay: 3000,
        hoverpause: true,
    }).mount();
}
// AKHIR GLIDE
//DETAIL NEWS
document.addEventListener("click", async function (event) {
    if (event.target.classList.contains("modal-detail-button")) {
        try {
            const id = event.target.dataset.id;
            const newsDetail = await getNewsDetail(id);
            tampilkanDetail(newsDetail);
        } catch (err) {
            console.log(err);
        }
        const modalContainer = document.querySelector(".modal-container");
        setTimeout(() => {
            modalContainer.classList.add("open");
        }, 50);
    }
});

function getNewsDetail(id) {
    return fetch(`/pages/getNews/${id}`).then((response) => {
        if (response.status !== 200) {
            throw new Error(response.statusText);
        }
        return response.json();
    });
}

function tampilkanDetail(newsDetail) {
    const putNewsDetail = inputNewsDetail(newsDetail);
    const modalBody = document.querySelector(".modal");
    modalBody.innerHTML = putNewsDetail;
}

function inputNewsDetail(news) {
    return `<div class="modal-container">
                  <div class="modal-item">
                      <div class="close-modal">
                          <h2>${news.judul}</h2>
                          <a href="#" class="close">X</a>
                      </div>
                      <hr>
                      <div class="modal-body">
                          <div class="img-modal">
                              <img class="img-modal-item" src="/img/news/${news.gambar}" alt="${news.judul}">
                          </div>
                          <div class="keterangan-modal">
                              <p class="subtitle">${news.tanggal}</p>
                              <p>${news.isi}</p>
                          </div>
                      </div>
                  </div>
              </div>`;
}

document.addEventListener("click", function (event) {
    if (event.target.classList.contains("close")) {
        const modalContainer = document.querySelector(".modal-container");
        event.preventDefault();
        modalContainer.classList.remove("open");
    }
});
// AKHIR DETAIL NEWS
// KEGIATAN
const tombolKegiatan = document.querySelectorAll(
    ".kegiatan .kegiatan-words .button"
);
const kegiatan = document.querySelectorAll(".kegiatan .daftar-giat");
tombolKegiatan.forEach((tombol) => {
    tombol.addEventListener("click", () => {
        const kategori = tombol.dataset.kategori;
        kegiatan.forEach((giat) => {
            if (giat.classList.contains(kategori)) {
                if (giat.classList.contains("show")) {
                    giat.classList.toggle("show");
                    setTimeout(() => {
                        giat.classList.toggle("display");
                    }, 500);
                    tombol.innerHTML =
                        "Daftar Kegiatan <i class='fa fa-chevron-down'></i>";
                } else {
                    giat.classList.toggle("display");
                    setTimeout(() => {
                        giat.classList.toggle("show");
                    }, 50);
                    tombol.innerHTML =
                        "Sembunyikan <i class='fa fa-chevron-up'></i>";
                }
            }
        });
    });
});
// AKHIR KEGIATAN
// PENGURUS
const tombolPengurus = document.querySelectorAll(
    ".pengurus .kategori .kategori-words .button"
);
const Pengurus = document.querySelectorAll(".pengurus .daftar-pengurus");
tombolPengurus.forEach((tombol) => {
    tombol.addEventListener("click", () => {
        const kategori = tombol.dataset.kategori;
        Pengurus.forEach((daftar) => {
            if (daftar.classList.contains(kategori)) {
                if (daftar.classList.contains("show")) {
                    daftar.classList.toggle("show");
                    setTimeout(() => {
                        daftar.classList.toggle("display");
                    }, 500);
                    tombol.innerHTML =
                        "Daftar Pengurus <i class='fa fa-chevron-down'></i>";
                } else {
                    daftar.classList.toggle("display");
                    setTimeout(() => {
                        daftar.classList.toggle("show");
                    }, 50);
                    tombol.innerHTML =
                        "Sembunyikan <i class='fa fa-chevron-up'></i>";
                }
            }
        });
    });
});
// AKHIR PENGURUS
// FILE PREVIEW
function previewFile() {
    const file = document.querySelector(".file-input");
    const filePreview = document.querySelector(".file-preview");
    filePreview.textContent = file.files[0].name;
}

function cek(nama) {
    console.log(nama);
}
// AKHIR FILE PREVIEW
// PARALLAX
ScrollOut({
    threshold: 0.2,
});
// AKHIR PARALLAX
