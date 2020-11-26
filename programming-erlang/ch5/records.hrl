-record(todo, {status=reminder,who=joe,text}).
-record(peony, {name,title,type=[t1,t2],description=[{org1,desc1},{org2,desc2}]}).
-record(type, {name,title,description}).
-record(organization, {name,title,url}).

-ifdef (comment).

#organization{name="aps",title="American Peony Society",url="https://americanpeonysociety.org/"}.
#organization{name="song_sparrow",title="Song Sparrow",url="https://www.songsparrow.com/"}.
#organization{name="hollingsworth_peonies",title="Hollingsworth Peonies",url="https://www.hollingsworthpeonies.com/"}.

#type{name=herbaceous_peony,title="Herbaceous Peony"}.
#type{name=herbaceous_hybrid,title="Herbaceous Hybrid"}.

#peony{name=abalone_pearl,title="Abalone Pearl",type=[herbaceous_peony, herbaceous_hybrid],description=[{aps,"ABALONE PEARL (K 759)-William H. Krekler May 1978. Lactiflora, 32-inch, earliest hugh flesh single, nice. Bulletin #227."},{song_sparrow,"ABALONE PEARL, Flower type: Peony Semi-double, Size: 26\", Bloom time: Early, Hybrid, Hybridizer: William Kreckler. This delicate beauty helps to welcome in the warm spring temperatures. A graceful coral-pink single with a sunny golden center adorns the dark green foliage. Slightly fragrant."}]}.

#peony{name=ace_of_hearts,title="Ace of Hearts",type=[herbaceous_peony, herbaceous_hybrid],description=[{aps,"ACE OF HEARTS (Don Hollingsworth) February 11, 2002. Seedling number 088. Parentage 0049 Cardinals Robe x 0038 Moonrise. Herbaceous hybrid, single. First bloomed before 1980. Stamens, pollen, seeds. One bud per stem, reliable, excellent substance. Good stem strength, medium height 36\". Early to mid-season bloom. Bold effect in landscape with heavy stems, large flower. No fragrance."},{hollingsworth_peonies,"Ace of Hearts (Hollingsworth, 2002) EM. Single; large flower, broad petals of soft, deep cardinal red around a large yellow stamen ball.  Medium tall for its hybrid group, heavy stems stand well, broad thick leaflets, bold effect in the landscape.  Grows well, flowers well.  Advanced generation hybrid; seeds and pollen.  Prentage (Cardinal.s Robe x Moonrise), presumed tetraploid.  Seedling Number 0868."}]}.

-endif.
