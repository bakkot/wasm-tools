(component
  (type (;0;)
    (component
      (type (;0;)
        (instance
          (type (;0;) u32)
          (export (;1;) "t" (type (eq 0)))
          (type (;2;) (record (field "f1" u8) (field "f2" u8)))
          (export (;3;) "r" (type (eq 2)))
          (type (;4;) (flags "f1" "f2"))
          (export (;5;) "fl" (type (eq 4)))
          (type (;6;) (variant (case "c1" u8) (case "c2")))
          (export (;7;) "v" (type (eq 6)))
          (type (;8;) (enum "c1" "c2"))
          (export (;9;) "e" (type (eq 8)))
          (export (;10;) "res" (type (sub resource)))
          (type (;11;) (own 10))
          (type (;12;) (func (result 11)))
          (export (;0;) "[constructor]res" (func (type 12)))
          (type (;13;) (borrow 10))
          (type (;14;) (func (param "self" 13)))
          (export (;1;) "[method]res.m" (func (type 14)))
          (type (;15;) (func))
          (export (;2;) "[static]res.s" (func (type 15)))
          (export (;3;) "f" (func (type 15)))
        )
      )
      (export (;0;) (interface "foo:foo/coverage-iface") (instance (type 0)))
      (type (;1;)
        (instance
          (type (;0;) (func))
          (export (;0;) "multiple-lines-split" (func (type 0)))
          (export (;1;) "mixed-forms" (func (type 0)))
        )
      )
      (export (;1;) (interface "foo:foo/other-comment-forms") (instance (type 1)))
      (type (;2;)
        (component
          (type (;0;) u32)
          (import "t" (type (;1;) (eq 0)))
          (type (;2;) (func))
          (import "imp" (func (;0;) (type 2)))
          (export (;1;) "exp" (func (type 2)))
          (type (;3;)
            (instance
              (type (;0;) u32)
              (export (;1;) "t" (type (eq 0)))
              (type (;2;) (func))
              (export (;0;) "f" (func (type 2)))
            )
          )
          (export (;0;) "i" (instance (type 3)))
        )
      )
      (export (;0;) (interface "foo:foo/coverage-world") (component (type 2)))
    )
  )
  (export (;1;) (interface "foo:foo/wit") (type 0))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)