import base64

MESSAGE = ''' FkYBHg4WBxIaUEFXQVUMHxADFU5bQUoCHQcBEAMGHBJGTVtSTAgGFgQMGgQJRl5LShAEBwYFFR5G UlFNUgsPCgUECQgQBwhSTkFOFgIFCBcdCBgHDx1QQVdBVR4DGQ0CAhIFSk1STB8UAAMAAxJKQUhL SgYDBwxQTU1GFAQCUkJbSVAWBA9TTBA= '''

KEY = 'markmubaiwa' 

result = []
for i, c in enumerate(base64.b64decode(MESSAGE)):
    result.append(chr(c ^ ord(KEY[i % len(KEY)])))

print(''.join(result))