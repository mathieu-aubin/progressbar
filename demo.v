import progressbar

fn main() {
	mut p := progressbar.Progressbar{}
	p.new('Smooth', 60)
	for i := 0; i < 60; i++ {
        time.usleep(100000)
        p.increment()
    }
    p.finish()

    mut p1 := progressbar.Progressbar{}
    p1.new_with_format('Waqar', 60, [`|`, `-`, `|`])
    for i := 0; i < 60; i++ {
        time.usleep(100000)
        p1.increment()
    }
    p1.finish()
}
