# Oxy-Neon-72
A larger sized version of the Oxy-Neon cursor theme

Forked from [Querta](https://www.pling.com/u/qwerta/)'s [Oxygen Neon project on gnome-look.org](https://www.gnome-look.org/p/999997/).

[Original Sources](https://www.gnome-look.org/p/999997/startdownload?file_id=1460735457&file_name=137109-oxy-neon-0.2.tar.gz&file_type=application/x-gzip&file_size=184907)

## Requirements
- [xcursorgen](https://www.x.org/releases/X11R7.7/doc/man/man1/xcursorgen.1.xhtml) -- To generate cursor files
- [Inkscape](https://inkscape.org/) -- To export multiple cursor sizes

## Installation

#### For basic installation

To install the original theme:

```bash
cd source
make
make install
```
#### Custom cursor size installation

```bash
cd source
SIZE=72 ./exportPNG.sh
cd $SIZE
make
make install
```
#### What I did lastnight

```bash
cd source
./exportPNG.sh
for c in *.cursor; do perl cursor.pl $c; done
make
make install
```
## TODO

- Rename project (72 not necessary)
- Fix `make install` target, permission problem
- Add missing icons

## Authors

lophophora@lard.site

## License

GPL

## Acknowledgements
- Original author [Querta](https://www.pling.com/u/qwerta/)
