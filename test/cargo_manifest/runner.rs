use std::{
    env::current_exe,
    path::PathBuf,
    fs::{read, read_to_string},
};

use cargo_toml::Manifest;

fn main() {
    // Find manifest for test
    let artifacts: Vec<PathBuf> = {
        let artifact_list_path = current_exe().unwrap().parent().unwrap().join("artifacts");
        assert!(artifact_list_path.exists());
        read_to_string(artifact_list_path).unwrap().split("\n").map(|path| PathBuf::from(path)).collect()
    };

    assert!(artifacts.len() > 0, "No artifacts were found in the artifact list");

    // Ensure the artifacts are serializable
    for artifact in artifacts.iter() {
        // Test the manifests
        if artifact.extension().unwrap() == "toml" {
            Manifest::from_slice(&read(artifact).unwrap()).unwrap();
            continue
        } 
        
        panic!("Unknwon file type {:?}", artifact.display());
    }
}
