is_valid = function(g)
{
    return(TRUE)
}


is_undirected = function(g)
{
    return(FALSE)
}


is_isomorphic = function(g1, g2)
{
    return(FALSE)
}

    
is_connected = function(g, v1, v2)
{
    return(character())
}


shortest_path = function(g, v1, v2)
{
    return(character())
}



g = list(A = list(edges   = c(2L),
                  weights = c(1 )),
         B = list(edges   = c(3L),
                  weights = c(1 )),
         C = list(edges   = c(5L),
                  weights = c(1 )),
         D = list(edges   = c(2L),
                  weights = c(1 )),
         E = list(edges   = c(4L,6L),
                  weights = c(1,1  )),
         F = list(edges   = c(),
                  weights = c())
)


adj_matrix = function(g)
{
  stopifnot(is_valid(g))
  
  m = matrix(0, nrow=length(g), ncol=length(g))
  rownames(m) = names(g)
  colnames(m) = names(g)
  
  for(j in seq_along(g))
  {
    node = g[[j]]
    
    for(i in seq_along(node$edges))
    {
      m[j, node$edges[i]] = node$weights[i]
    }
  }
  
  return(m)
}

