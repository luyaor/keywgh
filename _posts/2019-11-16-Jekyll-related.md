---
layout: post
title:  “Jekyll related topics"
date:   2019-11-16 16:17:55 -0500
categories: tools


---



## Images

### Rotation caused by EXIF info contained in metadata. 
 To fix it we can use python: 

```python
from PIL import Image
image_file = ""
im = Image.open(image_file)
im.transpose(Image.ROTATE_270).save(image_file)  # Change 270 to any degree you want
```

To see the details of EXIF:

```python
from PIL.ExifTags import TAGS
for tag, value in im._getexif().items():
		print(f"{:20s} {value})")
```

