package hello

import "testing"

func TestHello(t *testing.T) {
	want := "sup"
	if got := Hello(); got != want {
		t.Errorf("Hello(): %s, want: %s, got: %s", Hello(), want, got)
	}
}
