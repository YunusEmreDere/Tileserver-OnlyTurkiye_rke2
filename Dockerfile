FROM klokantech/tileserver-gl

WORKDIR /data

# 1. Harita Verisi
# (Senin uzun dosyanı 'turkey.mbtiles' adıyla içeri atıyoruz)
COPY osm-2020-02-10-v3.11_europe_turkey.mbtiles /data/turkey.mbtiles

# 2. Ayarlar ve Stiller
COPY config.json /data/config.json
COPY styles /data/styles
COPY fonts /data/fonts

# 3. Özel index.html'i data klasörüne kopyala (config'de belirttiğimiz yer)
COPY index.html /data/index.html

EXPOSE 80

CMD ["-c", "/data/config.json"]
