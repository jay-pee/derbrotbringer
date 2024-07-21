mkdir -p static/images/gallery/thumbs
for img in static/images/gallery/fulls/*.jpeg; do
    magick "$img" -resize 300x300^ -gravity center -extent 300x300 "static/images/gallery/thumbs/$(basename "$img")"
done