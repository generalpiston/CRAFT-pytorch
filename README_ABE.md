# Instructions

1. Create `test_images` directory
2. Add images to `test_images`
3. `docker build -t craft .`
4. `docker run --name craft -v /tmp/v:/app/result craft`
5. Check out contents of `/tmp/v`
