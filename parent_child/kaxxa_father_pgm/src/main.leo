// The 'kaxxa_father_pgm' program.
program kaxxa_father_pgm.aleo {

    record family_root {
        owner: address,
        caller: address,
        signer: address,
        sum: u32
    }

    transition father_call(public a: u32, b: u32) -> family_root {

        return family_root {
            owner: self.signer,
            caller: self.caller,
            signer: self.signer,
            sum: a + b,
        };
    }

    transition caller_address() -> public address {
        return self.caller;
    }
}
