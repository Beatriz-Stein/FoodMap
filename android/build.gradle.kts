allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
<<<<<<< HEAD
=======
subprojects {
    project.evaluationDependsOn(":app")
}
>>>>>>> b7a4abf5c88f9c5f991fd46a33d9a35d6ea8e524

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
