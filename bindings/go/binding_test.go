package tree_sitter_streamdevice_proto_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_streamdevice_proto "github.com/minijackson/tree-sitter-streamdevice_proto/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_streamdevice_proto.Language())
	if language == nil {
		t.Errorf("Error loading StreamdeviceProto grammar")
	}
}
