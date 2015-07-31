for i=1:min(length(err),30)

    
    continueChain(X(:,sse(:,:)==err(i)),beta);
    cf(i);plotPanels(fullP2X7);
end