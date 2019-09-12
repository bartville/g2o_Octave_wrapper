# G2oWrapper for Octave #

* it runs on Octave. I've said **Octave**, not _Matlab_.

...still ongoing.<br>

## G2o file Loading

Basic usage is:

```Matlab
g2o_data = load_g2o("test_data/sphere_base.g2o")
```
you get the following structure

```
Loading g2o file: test_data/sphere_base.g2o

g2o_data =

  scalar structure containing the fields:

    VERTEX_SE3_QUAT =

      1x150 struct array containing the fields:

        id
        x
        y
        z
        quat

    EDGE_SE3_QUAT =

      1x559 struct array containing the fields:

        id_from
        id_to
        x
        y
        z
        quat
        Omega

```

## Visualization

Working on speeding-up the visualization (copy on vectorized structures, and so on...).
For a full, but **slow** visualization (all edges and reference frames) set `full_visualization = true`. 

```
addpath './graphics/'

full_visualization = true; % plots all the edges and reference frames (slow)
plotGraph(g2o_data, full_visualization);
```

![sphere_base]
(https://i.ibb.co/x8JZf9w/Screenshot-from-2019-09-12-12-55-59.png)
