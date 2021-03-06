(module
  (memory 0 4294967295)
  (export "fold_promote" $fold_promote)
  (export "fold_demote" $fold_demote)
  (func $fold_promote (param $$0 f64) (param $$1 f32) (result f64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f64.copysign
            (get_local $$0)
            (f64.promote/f32
              (get_local $$1)
            )
          )
        )
      )
    )
  )
  (func $fold_demote (param $$0 f32) (param $$1 f64) (result f32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f32.copysign
            (get_local $$0)
            (f32.demote/f64
              (get_local $$1)
            )
          )
        )
      )
    )
  )
)
;; METADATA: { "asmConsts": {} }