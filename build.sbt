name := "drone-ci-test"
organization := "com.test"
version := "1.0"
scalaVersion := "2.12.5"

enablePlugins(JDebPackaging)
enablePlugins(JavaAppPackaging)

libraryDependencies ++= Seq(
  "org.typelevel" %% "cats-core" % "1.1.0",
  "io.monix" %% "monix" % "3.0.0-RC1"
)
