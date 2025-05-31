// The 'kaxxa_son_pgm' program.
import kaxxa_father_pgm.aleo;

program kaxxa_son_pgm.aleo {

    record return_son {
        owner: address,
        caller: address,
        signer: address,
        father_caller: address,
        father_signer: address,
        sum: u32
    }

    transition son_call(public a: u32, b: u32) -> return_son {

        let parent: kaxxa_father_pgm.aleo/family_root = kaxxa_father_pgm.aleo/father_call(a,b);

        return return_son {
            owner: self.signer,
            caller: self.caller,
            signer: self.signer,
            father_caller: parent.caller,
            father_signer: parent.signer,
            sum: parent.sum,
        };
    }

    transition son_address() -> public address {
        return kaxxa_father_pgm.aleo/caller_address();
    }
}
