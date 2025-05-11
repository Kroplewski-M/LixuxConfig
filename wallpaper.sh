
#!/bin/bash

# Folder containing your wallpapers
IMG_DIR="$HOME/Pictures/wallpapers"  # Change to your desired folder

# Find all image files (case-insensitive match)
mapfile -t images < <(find "$IMG_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.webp" \))

# Check if there are images
if [ ${#images[@]} -eq 0 ]; then
  echo "No images found in $IMG_DIR"
  exit 1
fi

# Choose a random image
random_img="${images[RANDOM % ${#images[@]}]}"

# Set it as wallpaper using swww
swww img "$random_img" --transition-type any --transition-duration 1

# Optional: print the path for confirmation/logging
echo "Wallpaper set to: $random_img"
