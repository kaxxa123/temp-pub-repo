// The 'test_kaxxa_son_pgm' test program.
import kaxxa_son_pgm.aleo;
program test_kaxxa_son_pgm.aleo {
    @test
    script test_it() {
        let result: u32 = kaxxa_son_pgm.aleo/main(1u32, 2u32);
        assert_eq(result, 3u32);
    }

    @test
    @should_fail
    transition do_nothing() {
        let result: u32 = kaxxa_son_pgm.aleo/main(2u32, 3u32);
        assert_eq(result, 3u32);
    }
}
