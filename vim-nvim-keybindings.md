
# Vim/Neovim Keybinding Rehberi

Bu rehber, verilen init.lua (Neovim) ve .vimrc (Vim) konfigürasyonlarındaki keybinding'leri açıklar. Her iki konfigürasyonda da **leader key** olarak **`,` (virgül)** tanımlanmış.

## 🔧 Temel Sistem Keybinding'leri

### Dosya İşlemleri
- `<Leader>w` → Dosyayı kaydet (`:write!`)
- `<Leader>q` → Vim'den çık (`:q!`)
- `<Leader>e` (sadece Neovim) → Dosya yolunu sistem panosuna kopyala (git root'a göre)
- `<C-f>` (sadece Vim) → Tam dosya yolunu ekranda göster

### Pencere Yönetimi
- `<C-h>` → Sol pencereye geç
- `<C-j>` → Alt pencereye geç  
- `<C-k>` → Üst pencereye geç
- `<C-l>` → Sağ pencereye geç
- `<Leader>o` (sadece Vim) → Sadece aktif pencereyi bırak, diğerlerini kapat

## 🔍 Arama ve Navigasyon

### Temel Arama
- `<Leader><space>` → Arama vurgulamalarını kaldır (`:nohlsearch`)
- `n` → Sonraki arama sonucuna git (ortalayarak)
- `N` → Önceki arama sonucuna git (ortalayarak)
- `*` → İmlecin altındaki kelimeyi ara (özel: imleç hareket etmez)
- `space` (sadece Vim) → Ekranı ortala (`zz`)

### Visual Mode Arama
- `*` (visual mode) → Seçili metni ara
- `#` (visual mode) → Seçili metni geriye doğru ara

## 📁 Dosya Gezgini (File Explorer)

### NvimTree/NERDTree
- `<Leader>n` → Dosya ağacını aç/kapat
- `<Leader>f` → Aktif dosyayı dosya ağacında bul ve göster

### NvimTree İçi Navigasyon (sadece Neovim)
- `s` → Dosyayı dikey bölme ile aç
- `i` → Dosyayı yatay bölme ile aç  
- `u` → Üst dizine çık

## 🔭 Fuzzy Finding (Telescope/FZF)

### Neovim (Telescope)
- `<C-p>` → Git dosyaları ara
- `<C-b>` → Tüm dosyaları ara
- `<C-g>` → LSP sembolleri ara
- `<Leader>td` → Diagnostics göster
- `<Leader>gs` → Kelime ara
- `<Leader>gg` → Canlı arama

### Vim (FZF)
- `<C-p>` → Dosya geçmişi
- `<C-b>` → Dosya ara
- `<C-g>` → Go sembolleri (`:GoDecls`)

## 🐹 Go Geliştirme

### Go Komutları
- `<Leader>b` → Go dosyasını build et (test dosyası ise test compile)
- `:A` → Alternate dosyaya geç (test ↔ kod)
- `:AV` → Alternate dosyayı dikey bölme ile aç
- `:AS` → Alternate dosyayı yatay bölme ile aç

### Go LSP (sadece Neovim)
- `gd` → Tanıma git
- `<Leader>v` → Tanımı dikey bölme ile aç
- `<Leader>s` → Tanımı yatay bölme ile aç
- `gr` → Referansları göster
- `K` → Hover bilgisi
- `<Leader>rn` → Rename
- `<Leader>ca` → Code actions

### Go Spesifik (sadece Vim)
- `<Leader>v` → Tanıma dikey git
- `<Leader>s` → Tanıma yatay git
- `<Leader>d` → Tanıma yeni tab'de git
- `<Leader>i` → Dokümantasyon göster
- `<Leader>t` → Test çalıştır
- `<Leader>c` → Coverage toggle

## 📝 Düzenleme ve Hareket

### Çıkış Modları
- `jj` → Insert mode'dan çık
- `jk` → Insert mode'dan çık

### Hareket
- `j` → Görsel satır aşağı (wrap olan satırlarda)
- `k` → Görsel satır yukarı
- `Y` → Satır sonuna kadar kopyala
- `H` → Satır başına git
- `L` → Satır sonuna git

### Quickfix Navigasyonu
- `<C-n>` → Sonraki quickfix item
- `<C-m>` → Önceki quickfix item  
- `<Leader>a` → Quickfix penceresini kapat

## 💬 Kod Yorumlama ve Manipülasyon

### Yorum (Comment)
- `gcc` → Satırı yorum yap/kaldır
- `gc` (visual mode) → Seçili alanı yorum yap/kaldır

### Kelime Manipülasyonu
- `<Leader>rw` (sadece Neovim) → İmlecin altındaki kelimeyi rename et
- `<Leader>ui` (sadece Vim) → Go doc comment oluştur

## 🌐 Git İşlemleri

### Git Blame ve Browse
- `<Leader>gb` → Git blame göster
- `<Leader>go` → Git browse (dosyayı browser'da aç)
- `:GBrowse` (sadece Neovim) → Git browse komutu

## 🔗 URL ve Link İşlemleri
- `gx` → İmlecin altındaki URL'yi tarayıcıda aç

## ⌨️ Terminal (sadece Vim)
- `<Leader>tv` → Dikey terminal aç
- `<Leader>ts` → Yatay terminal aç  
- `<Leader>tt` → Yeni tab'de terminal aç
- `<Esc>` (terminal mode) → Normal mode'a geç
- `<Leader>q` (terminal mode) → Terminal'i kapat

## 🎨 Spell Check
- `<F6>` (sadece Vim) → Spell check'i aç/kapat

## 💡 Önemli Notlar

### Treesitter Seçim (sadece Neovim)
- `<space>` → Node seçimini başlat/genişlet
- `<bs>` → Node seçimini daralt  
- `<tab>` → Scope seçimini genişlet

### Text Objects (sadece Neovim)
- `af`/`if` → Function (outer/inner)
- `ac`/`ic` → Class (outer/inner)
- `aa`/`ia` → Parameter (outer/inner)
- `aB`/`iB` → Block (outer/inner)

### Parameter Swap (sadece Neovim)
- `<Leader>sn` → Sonraki parameter ile swap
- `<Leader>sp` → Önceki parameter ile swap

## 🚀 Hızlı Başlangıç

1. **Dosya aç**: `<C-p>` (git dosyaları) veya `<C-b>` (tüm dosyalar)
2. **Arama**: `<Leader>gg` (Neovim) veya `/` (normal arama)
3. **Dosya kaydet**: `<Leader>w`
4. **Çık**: `<Leader>q`
5. **Dosya ağacı**: `<Leader>n`

Bu keybinding'ler özellikle Go geliştirme için optimize edilmiş modern bir Vim/Neovim kurulumu sağlar.
