#!/usr/bin/env python3
"""Sağlık ve Spor merkezinin özgün simge, açılış ve mağaza görselleri (Pillow).
Üçüncü taraf görsel kullanılmaz.  pip install pillow && python tool/generate_assets.py"""
import os
from PIL import Image, ImageDraw

BG_TOP, BG_BOTTOM, ACCENT, LIGHT = (20, 64, 74), (6, 23, 28), (255, 138, 128), (236, 246, 244)


def gradient(w, h):
    im = Image.new("RGB", (w, h))
    d = ImageDraw.Draw(im)
    for y in range(h):
        t = y / max(1, h - 1)
        d.line([(0, y), (w, y)], fill=tuple(int(BG_TOP[i] * (1 - t) + BG_BOTTOM[i] * t) for i in range(3)))
    return im


def glyph(d, cx, cy, s, color=ACCENT):
    """Kalp ve üzerinden geçen nabız çizgisi: özgün, sade çizim."""
    w = max(2, int(s // 12))
    r = s * 0.2
    # kalbin iki yuvarlağı ve alt üçgeni
    d.ellipse([cx - 2 * r, cy - r * 1.6, cx, cy + r * 0.4], fill=color)
    d.ellipse([cx, cy - r * 1.6, cx + 2 * r, cy + r * 0.4], fill=color)
    d.polygon([(cx - 1.93 * r, cy - 0.3 * r), (cx + 1.93 * r, cy - 0.3 * r), (cx, cy + 1.9 * r)], fill=color)
    # nabız çizgisi
    pts = [(cx - s * 0.48, cy), (cx - s * 0.2, cy), (cx - s * 0.1, cy - s * 0.2), (cx + s * 0.02, cy + s * 0.18),
           (cx + s * 0.12, cy - s * 0.08), (cx + s * 0.2, cy), (cx + s * 0.48, cy)]
    d.line(pts, fill=LIGHT, width=w, joint="curve")


def icon(size=1024):
    im = gradient(size, size)
    glyph(ImageDraw.Draw(im), size / 2, size / 2, size * 0.62)
    return im


def main():
    os.makedirs("assets/branding", exist_ok=True)
    os.makedirs("store", exist_ok=True)
    ic = icon()
    ic.save("assets/branding/icon.png")
    fg = Image.new("RGBA", (1024, 1024), (0, 0, 0, 0))
    glyph(ImageDraw.Draw(fg), 512, 512, 420)
    fg.save("assets/branding/icon_foreground.png")
    sp = Image.new("RGBA", (768, 768), (0, 0, 0, 0))
    glyph(ImageDraw.Draw(sp), 384, 384, 300)
    sp.save("assets/branding/splash.png")
    a12 = Image.new("RGBA", (1152, 1152), (0, 0, 0, 0))
    glyph(ImageDraw.Draw(a12), 576, 576, 380)
    a12.save("assets/branding/splash_android12.png")
    ic.resize((512, 512)).save("store/icon_512.png")
    fe = gradient(1024, 500)
    glyph(ImageDraw.Draw(fe), 512, 250, 300)
    fe.save("store/feature_graphic.png")
    print("assets ok")


if __name__ == "__main__":
    main()
